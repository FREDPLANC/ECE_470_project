
"use strict";

let robot1_gripper_input = require('./robot1_gripper_input.js');
let position = require('./position.js');
let gripper_input = require('./gripper_input.js');
let robot2_gripper_input = require('./robot2_gripper_input.js');
let command = require('./command.js');
let robot2_command = require('./robot2_command.js');
let robot2_position = require('./robot2_position.js');
let robot_position = require('./robot_position.js');
let robot1_command = require('./robot1_command.js');
let robot1_position = require('./robot1_position.js');

module.exports = {
  robot1_gripper_input: robot1_gripper_input,
  position: position,
  gripper_input: gripper_input,
  robot2_gripper_input: robot2_gripper_input,
  command: command,
  robot2_command: robot2_command,
  robot2_position: robot2_position,
  robot_position: robot_position,
  robot1_command: robot1_command,
  robot1_position: robot1_position,
};
